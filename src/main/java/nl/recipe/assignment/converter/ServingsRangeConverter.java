package nl.recipe.assignment.converter;

import nl.recipe.assignment.model.dto.ServingsRange;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class ServingsRangeConverter implements Converter<String, ServingsRange> {

    @Override
    public ServingsRange convert(final String source) {
        if (source.isBlank()) {
            return null;
        }

        String[] parts = source.split(",", -1);
        if (parts.length > 2) {
            throw new IllegalArgumentException("servings takes at most a min and max");
        }

        Integer min = parseOrNull(parts[0]);
        Integer max = parts.length > 1 ? parseOrNull(parts[1]) : null;

        return new ServingsRange(min, max);
    }

    private Integer parseOrNull(final String value) {
        return value.isBlank() ? null : Integer.valueOf(value.trim());
    }
}
