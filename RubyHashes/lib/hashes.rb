# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    if !emails.empty?
        i=0
        contacts.each do |key, value|
            contacts.store(key, emails[i])
            i+=1
        end
    else
        return contacts
    end
    #puts contacts
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
    i = 0
    if !contact_info[0].empty?
        contacts.each do |key, value|
            contacts[key] = {"email" => contact_info[i][0], "phone" => contact_info[i][1]}
            i+=1
        end
    else
        return contacts
    end
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
