.class public abstract Lc0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LM3/a;

.field public final b:LD3/u;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LM3/c;->b(ZILjava/lang/Object;)LM3/a;

    move-result-object v0

    iput-object v0, p0, Lc0/s;->a:LM3/a;

    invoke-static {v2, v1, v2}, LD3/w;->b(LD3/p0;ILjava/lang/Object;)LD3/u;

    move-result-object v0

    iput-object v0, p0, Lc0/s;->b:LD3/u;

    return-void
.end method


# virtual methods
.method public final a(Ll3/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc0/s;->b:LD3/u;

    invoke-interface {v0, p1}, LD3/P;->F(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public abstract b(Ll3/e;)Ljava/lang/Object;
.end method

.method public final c(Ll3/e;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lc0/s$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc0/s$a;

    iget v1, v0, Lc0/s$a;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc0/s$a;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc0/s$a;

    invoke-direct {v0, p0, p1}, Lc0/s$a;-><init>(Lc0/s;Ll3/e;)V

    :goto_0
    iget-object p1, v0, Lc0/s$a;->j:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lc0/s$a;->l:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lc0/s$a;->i:Ljava/lang/Object;

    check-cast v1, LM3/a;

    iget-object v0, v0, Lc0/s$a;->h:Ljava/lang/Object;

    check-cast v0, Lc0/s;

    :try_start_0
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lc0/s$a;->i:Ljava/lang/Object;

    check-cast v2, LM3/a;

    iget-object v4, v0, Lc0/s$a;->h:Ljava/lang/Object;

    check-cast v4, Lc0/s;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/s;->b:LD3/u;

    invoke-interface {p1}, LD3/p0;->D()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_4
    iget-object p1, p0, Lc0/s;->a:LM3/a;

    iput-object p0, v0, Lc0/s$a;->h:Ljava/lang/Object;

    iput-object p1, v0, Lc0/s$a;->i:Ljava/lang/Object;

    iput v4, v0, Lc0/s$a;->l:I

    invoke-interface {p1, v5, v0}, LM3/a;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v4, p0

    :goto_1
    :try_start_1
    iget-object v2, v4, Lc0/s;->b:LD3/u;

    invoke-interface {v2}, LD3/p0;->D()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lh3/n;->a:Lh3/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p1, v5}, LM3/a;->a(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto :goto_3

    :cond_6
    :try_start_2
    iput-object v4, v0, Lc0/s$a;->h:Ljava/lang/Object;

    iput-object p1, v0, Lc0/s$a;->i:Ljava/lang/Object;

    iput v3, v0, Lc0/s$a;->l:I

    invoke-virtual {v4, v0}, Lc0/s;->b(Ll3/e;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    move-object v1, p1

    move-object v0, v4

    :goto_2
    :try_start_3
    iget-object p1, v0, Lc0/s;->b:LD3/u;

    sget-object v0, Lh3/n;->a:Lh3/n;

    invoke-interface {p1, v0}, LD3/u;->t(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v1, v5}, LM3/a;->a(Ljava/lang/Object;)V

    return-object v0

    :goto_3
    invoke-interface {v1, v5}, LM3/a;->a(Ljava/lang/Object;)V

    throw p1
.end method
