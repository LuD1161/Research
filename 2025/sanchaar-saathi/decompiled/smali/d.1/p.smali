.class public abstract Ld/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public c:Lu3/a;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ld/p;->a:Z

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Ld/p;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ld/c;)V
    .locals 1

    const-string v0, "cancellable"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld/p;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lu3/a;
    .locals 1

    iget-object v0, p0, Ld/p;->c:Lu3/a;

    return-object v0
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract e(Ld/b;)V
.end method

.method public abstract f(Ld/b;)V
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Ld/p;->a:Z

    return v0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Ld/p;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/c;

    invoke-interface {v1}, Ld/c;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Ld/c;)V
    .locals 1

    const-string v0, "cancellable"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld/p;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Ld/p;->a:Z

    iget-object p1, p0, Ld/p;->c:Lu3/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lu3/a;->c()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final k(Lu3/a;)V
    .locals 0

    iput-object p1, p0, Ld/p;->c:Lu3/a;

    return-void
.end method
