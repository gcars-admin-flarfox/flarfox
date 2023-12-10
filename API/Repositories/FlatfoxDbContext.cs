using API.Model;
using Microsoft.EntityFrameworkCore;

namespace API.Repositories
{
    public class FlatfoxDbContext: DbContext
    {
        protected readonly IConfiguration Configuration;

        public FlatfoxDbContext(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(Configuration.GetConnectionString("FlatfoxDatabase"));
        }

        public DbSet<Lookup> Lookup { get; set; }
        public DbSet<PropertyDetails> PropertyDetails { get; set; }
    }
}
