package com.soulpaws.auth;

import com.soulpaws.model.Shelter;
import com.soulpaws.model.User;
import com.soulpaws.repository.ShelterRepository;
import com.soulpaws.repository.UserRepository;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    private final UserRepository userRepository;
    private final ShelterRepository shelterRepository;
    private final PasswordEncoder passwordEncoder;
    private final AuthenticationManager authenticationManager;

    public AuthenticationService(
            UserRepository userRepository,
            ShelterRepository shelterRepository,
            AuthenticationManager authenticationManager,
            PasswordEncoder passwordEncoder
    ) {
        this.authenticationManager = authenticationManager;
        this.userRepository = userRepository;
        this.shelterRepository = shelterRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public User signup(RegisterUserDto input) {
        User user = new User()
                .setName(input.getName())
                .setEmail(input.getEmail())
                .setPassword(passwordEncoder.encode(input.getPassword()))
                .setRole(User.Role.USER);

        return userRepository.save(user);
    }

    public Shelter registerShelter(RegisterShelterDto input) {
        User shelterUser = new User()
                .setName(input.getName())
                .setEmail(input.getEmail())
                .setPassword(passwordEncoder.encode(input.getPassword()))
                .setRole(User.Role.SHELTER);

        userRepository.save(shelterUser);

        Shelter shelter = Shelter.builder()
                .name(input.getName())
                .phone(input.getPhone())
                .email(input.getEmail())
                .address(input.getAddress())
                .province(input.getProvince())
                .postalCode(input.getPostalCode())
                .description(input.getDescription())
                .build();

        return shelterRepository.save(shelter);
    }

    public User authenticate(LoginUserDto input) {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        input.getEmail(),
                        input.getPassword()
                )
        );

        return userRepository.findByEmail(input.getEmail())
                .orElseThrow(() -> new UsernameNotFoundException("User not found"));
    }
}