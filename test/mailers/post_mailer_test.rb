require "test_helper"

class PostMailerTest < ActionMailer::TestCase
  test "blog_created" do
    mail = PostMailer.blog_created
    assert_equal "Blog created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
