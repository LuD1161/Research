.class public abstract LI3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI3/F;

.field public static final b:LI3/F;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI3/F;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LI3/k;->a:LI3/F;

    new-instance v0, LI3/F;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, LI3/F;-><init>(Ljava/lang/String;)V

    sput-object v0, LI3/k;->b:LI3/F;

    return-void
.end method

.method public static final synthetic a()LI3/F;
    .locals 1

    sget-object v0, LI3/k;->a:LI3/F;

    return-object v0
.end method

.method public static final b(Ll3/e;Ljava/lang/Object;Lu3/l;)V
    .locals 6

    instance-of v0, p0, LI3/j;

    if-eqz v0, :cond_8

    check-cast p0, LI3/j;

    invoke-static {p1, p2}, LD3/D;->c(Ljava/lang/Object;Lu3/l;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, LI3/j;->h:LD3/F;

    invoke-virtual {p0}, LI3/j;->a()Ll3/i;

    move-result-object v1

    invoke-virtual {v0, v1}, LD3/F;->L(Ll3/i;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p2, p0, LI3/j;->j:Ljava/lang/Object;

    iput v1, p0, LD3/T;->g:I

    iget-object p1, p0, LI3/j;->h:LD3/F;

    invoke-virtual {p0}, LI3/j;->a()Ll3/i;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, LD3/F;->K(Ll3/i;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_0
    sget-object v0, LD3/J0;->a:LD3/J0;

    invoke-virtual {v0}, LD3/J0;->b()LD3/Z;

    move-result-object v0

    invoke-virtual {v0}, LD3/Z;->U()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p2, p0, LI3/j;->j:Ljava/lang/Object;

    iput v1, p0, LD3/T;->g:I

    invoke-virtual {v0, p0}, LD3/Z;->Q(LD3/T;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v1}, LD3/Z;->S(Z)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, LI3/j;->a()Ll3/i;

    move-result-object v3

    sget-object v4, LD3/p0;->b:LD3/p0$b;

    invoke-interface {v3, v4}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v3

    check-cast v3, LD3/p0;

    if-eqz v3, :cond_2

    invoke-interface {v3}, LD3/p0;->b()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, LD3/p0;->z()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, LI3/j;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p2, Lh3/h;->e:Lh3/h$a;

    invoke-static {p1}, Lh3/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget-object p2, p0, LI3/j;->i:Ll3/e;

    iget-object v3, p0, LI3/j;->k:Ljava/lang/Object;

    invoke-interface {p2}, Ll3/e;->a()Ll3/i;

    move-result-object v4

    invoke-static {v4, v3}, LI3/J;->c(Ll3/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, LI3/J;->a:LI3/F;

    if-eq v3, v5, :cond_3

    invoke-static {p2, v4, v3}, LD3/E;->g(Ll3/e;Ll3/i;Ljava/lang/Object;)LD3/L0;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object p2, v2

    :goto_0
    :try_start_1
    iget-object v5, p0, LI3/j;->i:Ll3/e;

    invoke-interface {v5, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_4

    :try_start_2
    invoke-virtual {p2}, LD3/L0;->T0()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v4, v3}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-virtual {v0}, LD3/Z;->X()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, LD3/Z;->N(Z)V

    goto :goto_4

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_6

    :try_start_3
    invoke-virtual {p2}, LD3/L0;->T0()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    invoke-static {v4, v3}, LI3/J;->a(Ll3/i;Ljava/lang/Object;)V

    :cond_7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {p0, p1, v2}, LD3/T;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, LD3/Z;->N(Z)V

    throw p0

    :cond_8
    invoke-interface {p0, p1}, Ll3/e;->q(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static synthetic c(Ll3/e;Ljava/lang/Object;Lu3/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, LI3/k;->b(Ll3/e;Ljava/lang/Object;Lu3/l;)V

    return-void
.end method
