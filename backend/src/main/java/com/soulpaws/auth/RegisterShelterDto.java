package com.soulpaws.auth;

import lombok.*;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RegisterShelterDto {
    private String name;
    private String phone;
    private String email;
    private String address;
    private String province;
    private String postalCode;
    private String description;
    private String password;
}