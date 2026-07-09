package nl.recipe.assignment.service;

import lombok.RequiredArgsConstructor;
import nl.recipe.assignment.model.dto.UserDto;
import nl.recipe.assignment.model.entity.AppUser;
import nl.recipe.assignment.model.mapper.DomainMapper;
import nl.recipe.assignment.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final DomainMapper domainMapper;

    public List<UserDto> getUsers() {
        return domainMapper.toUserDtoList(userRepository.findAll());
    }

    public UserDto createUser(final UserDto userDto) {
        AppUser user = domainMapper.toEntity(userDto);
        AppUser savedUser = userRepository.save(user);

        return domainMapper.toDto(savedUser);
    }

    public AppUser findUserById(final Integer id) {
        return userRepository.findById(id).orElseThrow();
    }
}
