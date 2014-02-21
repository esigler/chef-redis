if defined?(ChefSpec)
  ChefSpec::Runner.define_runner_method :redis_instance

  def create_redis_instance(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:redis_instance, :create, resource)
  end

  def destroy_redis_instance(resource)
    ChefSpec::Matchers::ResourceMatcher.new(:redis_instance, :destroy, resource)
  end
end
