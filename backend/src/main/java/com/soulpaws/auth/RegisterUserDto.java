package com.soulpaws.auth;

import lombok.*;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RegisterUserDto {
    String email;
    String password;
    String name;
}
