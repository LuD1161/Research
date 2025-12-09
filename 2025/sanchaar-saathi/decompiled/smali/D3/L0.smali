.class public final LD3/L0;
.super LI3/B;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/ThreadLocal;

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(Ll3/i;Ll3/e;)V
    .locals 2

    sget-object v0, LD3/M0;->e:LD3/M0;

    invoke-interface {p1, v0}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, p2}, LI3/B;-><init>(Ll3/i;Ll3/e;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, LD3/L0;->i:Ljava/lang/ThreadLocal;

    invoke-interface {p2}, Ll3/e;->a()Ll3/i;

    move-result-object p2

    sget-object v0, Ll3/f;->d:Ll3/f$b;

    invoke-interface {p2, v0}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object p2

    instance-of p2, p2, LD3/F;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p1, p2}, LI3/J;->c(Ll3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, LD3/L0;->U0(Ll3/i;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public P0(Ljava/lang/Object;)V
    .locals 5

    iget-boolean v0, p0, LD3/L0;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LD3/L0;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh3/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/i;

    invoke-virtual {v0}, Lh3/g;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, LD3/L0;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    iget-object v0, p0, LI3/B;->h:Ll3/e;

    invoke-static {p1, v0}, LD3/D;->a(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LI3/B;->h:Ll3/e;

    invoke-interface {v0}, Ll3/e;->a()Ll3/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, LI3/J;->c(Ll3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, LI3/J;->a:LI3/F;

    if-eq v3, v4, :cond_2

    invoke-static {v0, v1, v3}, LD3/E;->g(Ll3/e;Ll3/i;Ljava/lang/Object;)LD3/L0;

    move-result-object v2

    :cond_2
    :try_start_0
    iget-object v0, p0, LI3/B;->h:Ll3/e;

    invoke-interface {v0, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, LD3/L0;->T0()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {v1, v3}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, LD3/L0;->T0()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {v1, v3}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    :cond_6
    throw p1
.end method

.method public final T0()Z
    .locals 3

    iget-boolean v0, p0, LD3/L0;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LD3/L0;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, LD3/L0;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/2addr v0, v1

    return v0
.end method

.method public final U0(Ll3/i;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LD3/L0;->threadLocalIsSet:Z

    iget-object v0, p0, LD3/L0;->i:Ljava/lang/ThreadLocal;

    invoke-static {p1, p2}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
