// FOR
// WHILE
// DO-WHILE
// BREAK
// CONTINUE
// LABELS IN 'Control Flow Statements'
main(List<String> args) {
  for (var i = 0; i < 10; i++) {
    // Defenite Loop
    // statements
  }

  var planets = ['Earth', 'sun', 'moon', 'venus', 'saturn', 'mercury'];
  for (String planet in planets) {
    // using 'in'
    print(planet);
  }

  var i = 0;
  while (i < 15) {
    // In-Defenite Loop
    //statemens
    i++;
  }

  do {
    // In-Defenite Loop
    // statments
    i++;
  } while (i > 20);

  // using Break
  for (i = 1; i <= 10; i++) {
    if (i >= 5) break; // will avoid futher code execution
    print(i);
  }

  outerLoop:
  for (var i = 1; i <= 3; i++) {
    innerLoop:
    for (var j = 1; j <= 10; j++) {
      if (i == 2 && j == 2) {
        break outerLoop;
      }
      if (i == 1 && j == 2) {
        break innerLoop;
      }
    }
  }

  // Using 'Continue' keyword
  for (var i = 1; i <= 10; i++) {
    if (i == 5)
      continue; // will avoid futher code execution for current iteration
    print(i);
  }

  outerLoop:
  for (var i = 1; i <= 3; i++) {
    innerLoop:
    for (var j = 1; j <= 10; j++) {
      if (i == 2 && j == 2) {
        continue outerLoop;
      }

      if (i == 1 && j == 2) {
        continue innerLoop;
      }
    }
  }
}
