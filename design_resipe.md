1. Describe the Problem
   define the bowling game and the scores

   | Frame | Roll 1 | Roll 2 | Bonus | Score |
   | ----- | ------ | ------ | ----- | ----- |
   | 1     | 9      | 1      | 10    | 19    |
   | 2     | 10     | 10     | 20    | 39    |
   | 3     | 5      | 4      | 9     | 48    |
   | 4     | 6      | 2      | 8     | 56    |
   | 5     | 10     | 10     | 20    | 76    |
   | 6     | 7      | 3      | 10    | 86    |
   | 7     | 9      | 2      | 11    | 97    |
   | 8     | 10     | 10     | 20    | 117   |
   | 9     | 8      | 1      | 9     | 126   |
   | 10    | 10     | 10     | 20    | 146   |

If the current frame is a strike, then the bonus is the number of pins knocked down in the next two frames.
If the current frame is a spare, then the bonus is the number of pins knocked down in the next frame.

```mermaid
flowchart TD;

A[Frame 1] --> B(Roll a Ball);
B -->|pins < 10|C(Roll a ball);
B -->|pins == 10|D{Strike};
C -->|pins < 10|E[Frame 2];
C -->|pins == 10|E;
D -->E;
E -->F(Roll a Ball);
F -->|pins == 10|G{Strike};
F -->|pins < 10, Add a bonus to Frame 1|H(Roll a Ball);
H -->|Add Bonus to Frame 1|I(Roll a ball);
G -->|Add Bonus to Frame 1|J;
I -->|pins == 10|J;
I -->|pins sum < 10|J[Frame 3];

```
