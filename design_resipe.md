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

![Alt Text](./images/Diagram.png)

```mermaid
flowchart TD

[![](https://mermaid.ink/img/pako:eNp1Ut9vgjAQ_leae9oSNIWKDDKXiIg_El_mnrb60EmdRGgNlGwO-d9HwWWRbe3DNXffd9_d9UrYyoiDB7tEvm_3LFPoKaCCivFLmLGUI3ODer0H5N88yiRBDPksSW6p8LX3fIxFju6Ric-T7_jrr_hopAFBuVZZfOAVFZMOd3qRsjZXsZY3pSLQvtpOtQ07hYRdwuxHKLwWMtA4inSJUhQ5UhJdOjzPOznnDU-D_S500elz9j90ScWiW9y1Ly_SdgLLywTIRo9eX_TnAQNSnqUsjuofKzWKgtrzlFPw6mfEsgMFKqoaxwol1yexBU9lBTegOEZM8SBmb7USeDuW5LX3yAR4JXyAZ9lmnxBzaFuO7djEcQYGnMAjuE8GrjW8s1wTu4RUBnxKWSfAfQcPLBdjbGPTtoY2abI9N8FWkkexktmq3a9mzaovfRO65A?type=png)](https://mermaid.live/edit#pako:eNp1Ut9vgjAQ_leae9oSNIWKDDKXiIg_El_mnrb60EmdRGgNlGwO-d9HwWWRbe3DNXffd9_d9UrYyoiDB7tEvm_3LFPoKaCCivFLmLGUI3ODer0H5N88yiRBDPksSW6p8LX3fIxFju6Ric-T7_jrr_hopAFBuVZZfOAVFZMOd3qRsjZXsZY3pSLQvtpOtQ07hYRdwuxHKLwWMtA4inSJUhQ5UhJdOjzPOznnDU-D_S500elz9j90ScWiW9y1Ly_SdgLLywTIRo9eX_TnAQNSnqUsjuofKzWKgtrzlFPw6mfEsgMFKqoaxwol1yexBU9lBTegOEZM8SBmb7USeDuW5LX3yAR4JXyAZ9lmnxBzaFuO7djEcQYGnMAjuE8GrjW8s1wTu4RUBnxKWSfAfQcPLBdjbGPTtoY2abI9N8FWkkexktmq3a9mzaovfRO65A)


```

2. Design the Class System

3. Create Examples as Integration Tests

4. Create Examples as Unit Tests
