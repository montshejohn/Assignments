function pluralize(noun, count) {
  var value = " ";
  var pluralized = noun + "s";
  noun = noun.toLowerCase();
  if (noun.match(/e/g) && count > 1) {
    value = count + noun;
  } else if (count > 1) {
    value = count + pluralized;
  } else {
    value = count + noun;
  }
  console.log(value);
}
pluralize("goose", 2);
