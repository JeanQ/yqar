class FilmsDuRepController < ApplicationController
  def liste
      res = []
      Dir.entries('/home/invite/Téléchargements').each{ |a|
	 res.push(a.grep(/((mkv)|(avi)|(mpg)|(mp4))\Z/i)[0])
      }
      @liste=res.compact
      render 
  end

  def list_video(chemin)
      res = []
      Dir.entries('/home/invite/Téléchargements').each{ |a|
	 res.push(a.grep(/((mkv)|(avi)|(mpg)|(mp4))\Z/i)[0])
      }
      @liste=res.compact
      render "liste"
  end

end
