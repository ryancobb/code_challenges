var arr = [5, 1, 3, 9 ,2]
var sentence = "This is A test";


var my_max = function(a) {
    var max = a[0];
    for (i = 0; i < a.length; i++){
        if (a[i] > max){
            max = a[i];
        }
    }
    return "The max is: " + max;
};

var vowel_count = function(s) {
    vowels = ["a", "e", "i", "o", "u", "y"];
    count = 0;
    for (i = 0; i < s.length; i++){
        if(vowels.indexOf(s[i].toLowerCase()) >= 0 ){
            count++;
        }
    }
    return "There are " + count + " vowels"
};

reverse = function(s){
    var new_s = "";
    console.log("Length: " + s.length);
    for (i = s.length -1; i >= 0; i--){
        new_s += s[i];
    }
    return new_s;
};

//console.log(my_max(arr))
//console.log(vowel_count(sentence));
console.log(reverse(sentence));