# Importing modules for timing and caching
import time
from functools import cache

# Using @cache to store results of this function for faster future calls
@cache
def count_vowels(text: str) -> int:
    # Simulating an expensive operation with a 3-second delay
    print("Counting...")
    time.sleep(3)
    vowels = "aeiouAEIOU"
    return sum(text.count(vowel) for vowel in vowels)

# Main section to create a simple chatbot that uses the cached function
if __name__ == "__main__":
    while True:
        user_input: str = input("You: ").lower()
        if user_input == "info":
            # Checking cache info to see hits, misses, and size
            print(f"Bot says: {count_vowels.cache_info()}")
        elif user_input == "clear":
            # Clearing the cache to free up memory
            count_vowels.cache_clear()
            print("Bot says: Cache has been cleared")
        else:
            # Counting vowels in the user input, using cache if available
            print(f"Bot says: That text contains {count_vowels(user_input)} vowels")