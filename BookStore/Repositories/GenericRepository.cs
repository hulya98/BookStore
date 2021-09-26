using BookStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace BookStore.Repositories
{
    public class GenericRepository<T> where T : class, new()
    {
        Context context = new Context();

        public List<T> TList()
        {
            return context.Set<T>().ToList();
        }

        public List<T> TListForWriter(Expression<Func<T, bool>> filter)
        {
            return context.Set<T>().Where(filter).ToList();
        }

        public void AddT(T t)
        {
            context.Set<T>().Add(t);
            context.SaveChanges();
        }

        public void UpdateT(T t)
        {
            context.Set<T>().Update(t);
            context.SaveChanges();
        }

        public void DeleteT(T t)
        {
            context.Set<T>().Remove(t);
            context.SaveChanges();
        }

        public T GetT(int id)
        {
            return context.Set<T>().Find(id);
        }

    }
}
