using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System.Data;

namespace SqlApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DatabaseController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public DatabaseController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpGet("test")]
        public IActionResult TestConnection()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_configuration.GetConnectionString("DefaultConnection")))
                {
                    conn.Open();
                    return Ok("SQL Server connection successful!");
                }
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }

        [HttpGet("users")]
        public IActionResult GetAllUsers()
        {
            var users = new List<Dictionary<string, string>>();

            using (SqlConnection conn = new SqlConnection(_configuration.GetConnectionString("DefaultConnection")))
            {
                SqlCommand cmd = new SqlCommand("EXEC GetAllUsers", conn);
                conn.Open();
                
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var user = new Dictionary<string, string>
                        {
                            { "Id", reader["Id"].ToString() },
                            { "Name", reader["Name"].ToString() },
                            { "Surname", reader["Surname"].ToString() },
                            { "Email", reader["Email"].ToString() }
                        };
                        users.Add(user);
                    }
                }
            }

            return Ok(users);
        }

        [HttpPost("users")]
        public IActionResult AddUser([FromBody] UserDto user)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(_configuration.GetConnectionString("DefaultConnection")))
                {
                    SqlCommand cmd = new SqlCommand("EXEC InsertUser @Name, @Surname, @Email", conn);
                    cmd.Parameters.AddWithValue("@Name", user.Name);
                    cmd.Parameters.AddWithValue("@Surname", user.Surname);
                    cmd.Parameters.AddWithValue("@Email", user.Email);
                    
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }

                return Ok("User added successfully");
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message);
            }
        }
    }

    public class UserDto
    {
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Email { get; set; }
    }
}