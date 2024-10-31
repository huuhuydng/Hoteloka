package model;

public class FeedbackStatistics {
    private double averageRating;       
    private int[] ratingCounts;           
    private double[] ratingPercentages;  
    private int totalFeedbacks;          

    public FeedbackStatistics() {
        this.ratingCounts = new int[5];           
        this.ratingPercentages = new double[5];  
    }

    public FeedbackStatistics(double averageRating, int[] ratingCounts, double[] ratingPercentages, int totalFeedbacks) {
        this.averageRating = averageRating;
        this.ratingCounts = ratingCounts;
        this.ratingPercentages = ratingPercentages;
        this.totalFeedbacks = totalFeedbacks;
    }

    public double getAverageRating() {
        return averageRating;
    }

    public void setAverageRating(double averageRating) {
        this.averageRating = averageRating;
    }

    public int[] getRatingCounts() {
        return ratingCounts;
    }

    public void setRatingCounts(int[] ratingCounts) {
        this.ratingCounts = ratingCounts;
    }

    public double[] getRatingPercentages() {
        return ratingPercentages;
    }

    public void setRatingPercentages(double[] ratingPercentages) {
        this.ratingPercentages = ratingPercentages;
    }

    public int getTotalFeedbacks() {
        return totalFeedbacks;
    }

    public void setTotalFeedbacks(int totalFeedbacks) {
        this.totalFeedbacks = totalFeedbacks;
    }

    public int getRatingCount(int star) {
        if (star >= 1 && star <= 5) {
            return ratingCounts[star - 1];
        }
        return 0;
    }

    public double getRatingPercentage(int star) {
    if (star >= 1 && star <= 5 && ratingPercentages != null) {
        return ratingPercentages[star - 1];
    }
    return 0.0;
}


    public void calculatePercentages() {
        if (totalFeedbacks > 0) {
            for (int i = 0; i < 5; i++) {
                ratingPercentages[i] = Math.round((ratingCounts[i] * 100.0 / totalFeedbacks) * 10.0) / 10.0;
            }
        }
    }

    public void calculateAverageRating() {
        if (totalFeedbacks > 0) {
            double sum = 0;
            for (int i = 0; i < 5; i++) {
                sum += (i + 1) * ratingCounts[i];
            }
            this.averageRating = Math.round((sum / totalFeedbacks) * 10.0) / 10.0;
        }
    }

    @Override
    public String toString() {
        return "FeedbackStatistics{" +
                "averageRating=" + averageRating +
                ", totalFeedbacks=" + totalFeedbacks +
                '}';
    }
}