SELECT
    capital,
    TRANSLATE(capital, 'áãåçéíñóú', 'aaaceinou') as translated_name
from countries