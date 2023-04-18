#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MIN_LENGTH 8
#define MAX_LENGTH 16

int main() {
    char password[MAX_LENGTH];
    int has_upper = 0, has_lower = 0, has_digit = 0, has_symbol = 0;

    printf("Enter your password (8-16 characters): ");
    fgets(password, MAX_LENGTH, stdin);

    if (strlen(password) < MIN_LENGTH || strlen(password) > MAX_LENGTH) {
        printf("Password must be between 8 and 16 characters long.\n");
        return 0;
    }

    for (int i = 0; i < strlen(password); i++) {
        if (isupper(password[i])) {
            has_upper = 1;
        } else if (islower(password[i])) {
            has_lower = 1;
        } else if (isdigit(password[i])) {
            has_digit = 1;
        } else {
            has_symbol = 1;
        }
    }

    if (has_upper && has_lower && has_digit && has_symbol) {
        printf("Strong password.\n");
    } else {
        printf("Weak password.\n");
    }

    return 0;
}
