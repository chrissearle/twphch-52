# Assign vote count from votes

Image.all.each do |image|
  image.votecount = image.votes.size
  image.save
end


# Assign rank from vote count

rank = 0
last_vote_count = -1

Image.all.sort_by{|i| -i.votecount}.each do |image|
  if last_vote_count != image.votecount
    rank += 1
    last_vote_count = image.votecount
  end

  image.rank = rank
  image.save
end

# Clear votes

Image.all.each do |image|
  image.votecount = 0
  image.rank = 0
  image.save
end
