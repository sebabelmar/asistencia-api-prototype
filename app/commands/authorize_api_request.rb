class AuthorizeApiRequest
  prepend SimpleCommand

  def initialize(headers)
    @headers = headers
  end

  def call
    user
  end

  private

    attr_reader :headers

    def user
      begin
        id = decoded_auth_token[1][0]['user_id'] if decoded_auth_token[1]
      rescue
        return errors.add(:token, 'invalid token')
      end

      @user ||= User.find(id)
    end

    def decoded_auth_token
      @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
    end

    def http_auth_header
      if headers['Authorization'].present?
        return headers['Authorization'].split(' ').last
      else
        errors.add(:token, 'missing token')
        return nil
      end
    end
end
