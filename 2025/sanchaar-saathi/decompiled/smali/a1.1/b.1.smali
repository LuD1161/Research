.class public abstract La1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:LR0/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LR0/o;

    invoke-direct {v0}, LR0/o;-><init>()V

    iput-object v0, p0, La1/b;->e:LR0/o;

    return-void
.end method

.method public static b(Ljava/util/UUID;LR0/E;)La1/b;
    .locals 1

    new-instance v0, La1/b$a;

    invoke-direct {v0, p1, p0}, La1/b$a;-><init>(LR0/E;Ljava/util/UUID;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;LR0/E;Z)La1/b;
    .locals 1

    new-instance v0, La1/b$b;

    invoke-direct {v0, p1, p0, p2}, La1/b$b;-><init>(LR0/E;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public a(LR0/E;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, La1/b;->e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    invoke-virtual {p1}, LR0/E;->n()LR0/r;

    move-result-object v0

    invoke-virtual {v0, p2}, LR0/r;->r(Ljava/lang/String;)Z

    invoke-virtual {p1}, LR0/E;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR0/t;

    invoke-interface {v0, p2}, LR0/t;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()LQ0/l;
    .locals 1

    iget-object v0, p0, La1/b;->e:LR0/o;

    return-object v0
.end method

.method public final e(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->J()LZ0/v;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->E()LZ0/b;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, LZ0/v;->k(Ljava/lang/String;)LQ0/s;

    move-result-object v2

    sget-object v3, LQ0/s;->g:LQ0/s;

    if-eq v2, v3, :cond_0

    sget-object v3, LQ0/s;->h:LQ0/s;

    if-eq v2, v3, :cond_0

    sget-object v2, LQ0/s;->j:LQ0/s;

    invoke-interface {v0, v2, p2}, LZ0/v;->n(LQ0/s;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1, p2}, LZ0/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(LR0/E;)V
    .locals 2

    invoke-virtual {p1}, LR0/E;->j()Landroidx/work/a;

    move-result-object v0

    invoke-virtual {p1}, LR0/E;->q()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p1}, LR0/E;->o()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1}, LR0/u;->b(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public abstract g()V
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, La1/b;->g()V

    iget-object v0, p0, La1/b;->e:LR0/o;

    sget-object v1, LQ0/l;->a:LQ0/l$b$c;

    invoke-virtual {v0, v1}, LR0/o;->a(LQ0/l$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, La1/b;->e:LR0/o;

    new-instance v2, LQ0/l$b$a;

    invoke-direct {v2, v0}, LQ0/l$b$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, LR0/o;->a(LQ0/l$b;)V

    :goto_0
    return-void
.end method
