var findAnagrams = (array) => {
    var result = [],
        anagrams = [],
        i = 0;

    for (var i = 0; i < array.length; i++) {

        var word = array[i];
        var wordBuilder = word.split("").sort().join("");

        var anagram = [];
        anagram.push(word)

        for (var j = 0; j < array.length; j++) {

            if (i === j) {
                continue;
            }

            var word2 = array[j];
            var word2Builder = word2.split("").sort().join("");
            if (wordBuilder === word2Builder) {

                anagram.push(word2);
            }
        }

        anagrams.push(anagram);
    }

    anagrams.forEach(element => {
        if (!result.includes(JSON.stringify(element.sort()))) {
            result.push(JSON.stringify(element));
        }
    })

    result.forEach((element, i) => {
        result[i] = JSON.parse(element);
    })

    return result;
}


console.log(findAnagrams(['cook', 'save', 'taste', 'aves', 'vase', 'state', 'map']))