import { convertToCamelCase } from './text.util';

/**
 * Extracts the text between the start and end tags
 * @param {string} text
 * @param {string} start
 * @param {string} end
 * @returns {string}
 * @example
 * extractBetween('Hello <strong>World</strong>', '<strong>', '</strong>')
 * // => 'World'
 */
export const extractBetween = (text, start, end) => {
    const startIndex = text.indexOf(start) + start.length;
    const endIndex = text.indexOf(end);
    return text.substring(startIndex, endIndex);
};

/**
 * Extracts all the text between the start and end tags
 * @param {string} text - The text to extract from
 * @param {string} start - The start tag
 * @param {string} end - The end tag
 * @returns {string[]} - An array of strings between the start and end tags
 * @example
 * extractAllBetween('Hello <strong>World</strong> <strong>Again</strong>', '<strong>', '</strong>')
 * // => ['World', 'Again']
 */
export const extractAllBetween = (text, start, end) => {
    const firstSplit = text.split(start);
    const secondSplit = firstSplit.map((item) => item.split(end));
    const thirdSplit = secondSplit.map((item) => item[0]);
    return thirdSplit.slice(1 - thirdSplit.length);
};

const convertRowToObject = (row, headers) => {
    return row.reduce((acc, item, index) => {
        const parsedItem = Number.isNaN(parseFloat(item))
            ? item.split('<sup>')[0]
            : parseFloat(item);
        return { ...acc, [headers[index]]: parsedItem };
    }, {});
};

export const convertTabletoJSON = (table) => {
    const headers = extractAllBetween(table, '<th>', '</th>').map((item) =>
        convertToCamelCase(item.trim())
    );
    const tableBody = extractBetween(table, '<tbody>', '</tbody>');
    const rows = extractAllBetween(tableBody, '<tr>', '</tr>').reduce((acc, item) => {
        const parsedItem = item.replace(/ align="right"/g, '').replace(/ align="center"/g, '');
        const row = extractAllBetween(parsedItem, '<td>', '</td>').map((item) => item.trim());
        const object = convertRowToObject(row, headers);
        return [...acc, object];
    }, []);
    return rows;
};
