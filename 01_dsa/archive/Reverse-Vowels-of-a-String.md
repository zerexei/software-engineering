```ts
function reverseVowels(s: string): string {
    if (!s || !s.match(/[aeiou]/gi)) return s;

    let reverseVowels = [...s.match(/[aeiou]/gi)];
    const letters = [...s];
    reverseVowels.reverse()
    let j = 0;
    for (let i = 0; i < letters.length; i++) {
        if (letters[i].match(/[aeiou]/i)) {
            letters[i] = reverseVowels[j];
            j++
        }
    }
    return letters.join("");
};
```


#345. Reverse Vowels of a String
Given a string s, reverse only all the vowels in the string and return it.

The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

 

Example 1:

Input: s = "IceCreAm"

Output: "AceCreIm"

Explanation:

The vowels in s are ['I', 'e', 'e', 'A']. On reversing the vowels, s becomes "AceCreIm".

Example 2:

Input: s = "leetcode"

Output: "leotcede"

 

Constraints:

1 <= s.length <= 3 * 105
s consist of printable ASCII characters.
