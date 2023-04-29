/**
 * Converts a string to camel case
 * @param {string} text - The text to convert to camel case
 * @returns {string} - The text in camel case
 */
export const convertToCamelCase = (text) => {
    return text.toLowerCase().replace(/[^a-zA-Z0-9]+(.)/g, (m, chr) => chr.toUpperCase());
};
