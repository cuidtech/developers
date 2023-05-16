import React from 'react';
import './Pagination.css';

interface PaginationProps {
    currentPage: number;
    totalPages: number;
    onPageChange: (page: number) => void;
}

// eslint-disable-next-line react/function-component-definition
const Pagination: React.FC<PaginationProps> = ({ currentPage, totalPages, onPageChange }) => {
    const handlePaginationClick = (page: number) => {
        if (page !== currentPage) {
            onPageChange(page);
        }
    };

    const handlePreviousClick = () => {
        if (currentPage > 1) {
            handlePaginationClick(currentPage - 1);
        }
    };

    const handleNextClick = () => {
        if (currentPage < totalPages) {
            handlePaginationClick(currentPage + 1);
        }
    };

    return (
        <div className="pagination">
            <button
                className={`pagination-item ${currentPage === 1 ? 'disabled' : ''}`}
                onClick={handlePreviousClick}
                disabled={currentPage === 1}
                type="button"
            >
                Previous
            </button>
            {React.Children.toArray(
                Array.from({ length: totalPages }).map((_, index) => (
                    <button
                        className={`pagination-item ${currentPage === index + 1 ? 'active' : ''}`}
                        onClick={() => handlePaginationClick(index + 1)}
                        type="button"
                    >
                        {index + 1}
                    </button>
                ))
            )}
            <button
                className={`pagination-item ${currentPage === totalPages ? 'disabled' : ''}`}
                onClick={handleNextClick}
                disabled={currentPage === totalPages}
                type="button"
            >
                Next
            </button>
        </div>
    );
};

export default Pagination;
