class Movie < ActiveRecord::Base
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    def self.create_with_title(title)
        create(title: title)
    end

    def self.first_movie
        self.first
    end
    def self.last_movie
        self.last
    end
    def self.movie_count
        self.count
    end
    def self.find_movie_with_id id
        find(id)
    end
    def self.find_movie_with_attributes (hash)
        find_by(hash)
    end
    def self.find_movies_after_2002
        where(release_date: 2003..)
    end

    def update_with_attributes(hash)
        update(hash)
    end
    def self.update_all_titles(title)
        update(title: title)
    end

    def self.delete_by_id(id)
        destroy(id)
    end
    def self.delete_all_movies
        self.destroy_all
    end
end