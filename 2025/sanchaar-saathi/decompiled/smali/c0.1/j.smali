.class public final Lc0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc0/j$a;,
        Lc0/j$b;
    }
.end annotation


# static fields
.field public static final m:Lc0/j$a;


# instance fields
.field public final a:Lc0/w;

.field public final b:Lc0/d;

.field public final c:LD3/I;

.field public final d:LG3/d;

.field public final e:LM3/a;

.field public f:I

.field public g:LD3/p0;

.field public final h:Lc0/k;

.field public final i:Lc0/j$b;

.field public final j:Lh3/d;

.field public final k:Lh3/d;

.field public final l:Lc0/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc0/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc0/j$a;-><init>(Lv3/g;)V

    sput-object v0, Lc0/j;->m:Lc0/j$a;

    return-void
.end method

.method public constructor <init>(Lc0/w;Ljava/util/List;Lc0/d;LD3/I;)V
    .locals 2

    const-string v0, "storage"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initTasksList"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "corruptionHandler"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/j;->a:Lc0/w;

    iput-object p3, p0, Lc0/j;->b:Lc0/d;

    iput-object p4, p0, Lc0/j;->c:LD3/I;

    new-instance p1, Lc0/j$d;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lc0/j$d;-><init>(Lc0/j;Ll3/e;)V

    invoke-static {p1}, LG3/f;->j(Lu3/p;)LG3/d;

    move-result-object p1

    iput-object p1, p0, Lc0/j;->d:LG3/d;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p1, v0, p3}, LM3/c;->b(ZILjava/lang/Object;)LM3/a;

    move-result-object p1

    iput-object p1, p0, Lc0/j;->e:LM3/a;

    new-instance p1, Lc0/k;

    invoke-direct {p1}, Lc0/k;-><init>()V

    iput-object p1, p0, Lc0/j;->h:Lc0/k;

    new-instance p1, Lc0/j$b;

    invoke-direct {p1, p0, p2}, Lc0/j$b;-><init>(Lc0/j;Ljava/util/List;)V

    iput-object p1, p0, Lc0/j;->i:Lc0/j$b;

    new-instance p1, Lc0/j$r;

    invoke-direct {p1, p0}, Lc0/j$r;-><init>(Lc0/j;)V

    invoke-static {p1}, Lh3/e;->a(Lu3/a;)Lh3/d;

    move-result-object p1

    iput-object p1, p0, Lc0/j;->j:Lh3/d;

    new-instance p1, Lc0/j$c;

    invoke-direct {p1, p0}, Lc0/j$c;-><init>(Lc0/j;)V

    invoke-static {p1}, Lh3/e;->a(Lu3/a;)Lh3/d;

    move-result-object p1

    iput-object p1, p0, Lc0/j;->k:Lh3/d;

    new-instance p1, Lc0/t;

    new-instance p2, Lc0/j$u;

    invoke-direct {p2, p0}, Lc0/j$u;-><init>(Lc0/j;)V

    sget-object v0, Lc0/j$v;->f:Lc0/j$v;

    new-instance v1, Lc0/j$w;

    invoke-direct {v1, p0, p3}, Lc0/j$w;-><init>(Lc0/j;Ll3/e;)V

    invoke-direct {p1, p4, p2, v0, v1}, Lc0/t;-><init>(LD3/I;Lu3/l;Lu3/p;Lu3/p;)V

    iput-object p1, p0, Lc0/j;->l:Lc0/t;

    return-void
.end method

.method public static final synthetic c(Lc0/j;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc0/j;->q(Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lc0/j;)Lc0/n;
    .locals 0

    invoke-virtual {p0}, Lc0/j;->s()Lc0/n;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lc0/j;)Lc0/k;
    .locals 0

    iget-object p0, p0, Lc0/j;->h:Lc0/k;

    return-object p0
.end method

.method public static final synthetic f(Lc0/j;)Lc0/j$b;
    .locals 0

    iget-object p0, p0, Lc0/j;->i:Lc0/j$b;

    return-object p0
.end method

.method public static final synthetic g(Lc0/j;)Lc0/w;
    .locals 0

    iget-object p0, p0, Lc0/j;->a:Lc0/w;

    return-object p0
.end method

.method public static final synthetic h(Lc0/j;)Lh3/d;
    .locals 0

    iget-object p0, p0, Lc0/j;->j:Lh3/d;

    return-object p0
.end method

.method public static final synthetic i(Lc0/j;)Lc0/t;
    .locals 0

    iget-object p0, p0, Lc0/j;->l:Lc0/t;

    return-object p0
.end method

.method public static final synthetic j(Lc0/j;Lc0/p$a;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j;->u(Lc0/p$a;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lc0/j;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc0/j;->v(Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lc0/j;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc0/j;->w(Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lc0/j;ZLl3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j;->x(ZLl3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lc0/j;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc0/j;->y(Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lc0/j;ZLl3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j;->z(ZLl3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lc0/j;ZLl3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j;->A(ZLl3/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(ZLl3/e;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc0/j;->c:LD3/I;

    invoke-interface {v0}, LD3/I;->p()Ll3/i;

    move-result-object v0

    new-instance v1, Lc0/j$q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lc0/j$q;-><init>(Lc0/j;ZLl3/e;)V

    invoke-static {v0, v1, p2}, LD3/g;->e(Ll3/i;Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final B(Lu3/p;Ll3/i;Ll3/e;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lc0/j;->s()Lc0/n;

    move-result-object v0

    new-instance v1, Lc0/j$s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lc0/j$s;-><init>(Lc0/j;Ll3/i;Lu3/p;Ll3/e;)V

    invoke-interface {v0, v1, p3}, Lc0/n;->d(Lu3/l;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final C(Ljava/lang/Object;ZLl3/e;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lc0/j$x;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lc0/j$x;

    iget v1, v0, Lc0/j$x;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc0/j$x;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc0/j$x;

    invoke-direct {v0, p0, p3}, Lc0/j$x;-><init>(Lc0/j;Ll3/e;)V

    :goto_0
    iget-object p3, v0, Lc0/j$x;->i:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lc0/j$x;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lc0/j$x;->h:Ljava/lang/Object;

    check-cast p1, Lv3/u;

    invoke-static {p3}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lh3/i;->b(Ljava/lang/Object;)V

    new-instance p3, Lv3/u;

    invoke-direct {p3}, Lv3/u;-><init>()V

    invoke-virtual {p0}, Lc0/j;->t()Lc0/x;

    move-result-object v2

    new-instance v10, Lc0/j$y;

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, p3

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lc0/j$y;-><init>(Lv3/u;Lc0/j;Ljava/lang/Object;ZLl3/e;)V

    iput-object p3, v0, Lc0/j$x;->h:Ljava/lang/Object;

    iput v3, v0, Lc0/j$x;->k:I

    invoke-interface {v2, v10, v0}, Lc0/x;->c(Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p3

    :goto_1
    iget p1, p1, Lv3/u;->e:I

    invoke-static {p1}, Ln3/b;->c(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Lu3/p;Ll3/e;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p2}, Ll3/e;->a()Ll3/i;

    move-result-object v0

    sget-object v1, Lc0/A$a$a;->e:Lc0/A$a$a;

    invoke-interface {v0, v1}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v0

    check-cast v0, Lc0/A;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lc0/A;->a(Lc0/h;)V

    :cond_0
    new-instance v1, Lc0/A;

    invoke-direct {v1, v0, p0}, Lc0/A;-><init>(Lc0/A;Lc0/j;)V

    new-instance v0, Lc0/j$t;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lc0/j$t;-><init>(Lc0/j;Lu3/p;Ll3/e;)V

    invoke-static {v1, v0, p2}, LD3/g;->e(Ll3/i;Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()LG3/d;
    .locals 1

    iget-object v0, p0, Lc0/j;->d:LG3/d;

    return-object v0
.end method

.method public final q(Ll3/e;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lc0/j$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc0/j$e;

    iget v1, v0, Lc0/j$e;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc0/j$e;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc0/j$e;

    invoke-direct {v0, p0, p1}, Lc0/j$e;-><init>(Lc0/j;Ll3/e;)V

    :goto_0
    iget-object p1, v0, Lc0/j$e;->j:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lc0/j$e;->l:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lc0/j$e;->i:Ljava/lang/Object;

    check-cast v1, LM3/a;

    iget-object v0, v0, Lc0/j$e;->h:Ljava/lang/Object;

    check-cast v0, Lc0/j;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/j;->e:LM3/a;

    iput-object p0, v0, Lc0/j$e;->h:Ljava/lang/Object;

    iput-object p1, v0, Lc0/j$e;->i:Ljava/lang/Object;

    iput v3, v0, Lc0/j$e;->l:I

    invoke-interface {p1, v4, v0}, LM3/a;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    :goto_1
    :try_start_0
    iget p1, v0, Lc0/j;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lc0/j;->f:I

    if-nez p1, :cond_5

    iget-object p1, v0, Lc0/j;->g:LD3/p0;

    if-eqz p1, :cond_4

    invoke-static {p1, v4, v3, v4}, LD3/p0$a;->a(LD3/p0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    iput-object v4, v0, Lc0/j;->g:LD3/p0;

    :cond_5
    sget-object p1, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, v4}, LM3/a;->a(Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :goto_3
    invoke-interface {v1, v4}, LM3/a;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method public final r(ZLu3/l;Ll3/e;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p2, p3}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lc0/j;->s()Lc0/n;

    move-result-object p1

    new-instance v0, Lc0/j$f;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lc0/j$f;-><init>(Lu3/l;Ll3/e;)V

    invoke-interface {p1, v0, p3}, Lc0/n;->d(Lu3/l;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s()Lc0/n;
    .locals 1

    iget-object v0, p0, Lc0/j;->k:Lh3/d;

    invoke-interface {v0}, Lh3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/n;

    return-object v0
.end method

.method public final t()Lc0/x;
    .locals 1

    iget-object v0, p0, Lc0/j;->j:Lh3/d;

    invoke-interface {v0}, Lh3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/x;

    return-object v0
.end method

.method public final u(Lc0/p$a;Ll3/e;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lc0/j$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc0/j$g;

    iget v1, v0, Lc0/j$g;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc0/j$g;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc0/j$g;

    invoke-direct {v0, p0, p2}, Lc0/j$g;-><init>(Lc0/j;Ll3/e;)V

    :goto_0
    iget-object p2, v0, Lc0/j$g;->k:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lc0/j$g;->m:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lc0/j$g;->h:Ljava/lang/Object;

    check-cast p1, LD3/u;

    :goto_1
    :try_start_0
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lc0/j$g;->j:Ljava/lang/Object;

    check-cast p1, LD3/u;

    iget-object v2, v0, Lc0/j$g;->i:Ljava/lang/Object;

    check-cast v2, Lc0/j;

    iget-object v4, v0, Lc0/j$g;->h:Ljava/lang/Object;

    check-cast v4, Lc0/p$a;

    :try_start_1
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, p1

    move-object p1, v4

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lc0/j$g;->h:Ljava/lang/Object;

    check-cast p1, LD3/u;

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lc0/p$a;->a()LD3/u;

    move-result-object p2

    :try_start_2
    sget-object v2, Lh3/h;->e:Lh3/h$a;

    iget-object v2, p0, Lc0/j;->h:Lc0/k;

    invoke-virtual {v2}, Lc0/k;->a()Lc0/v;

    move-result-object v2

    instance-of v6, v2, Lc0/e;

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lc0/p$a;->d()Lu3/p;

    move-result-object v2

    invoke-virtual {p1}, Lc0/p$a;->b()Ll3/i;

    move-result-object p1

    iput-object p2, v0, Lc0/j$g;->h:Ljava/lang/Object;

    iput v5, v0, Lc0/j$g;->m:I

    invoke-virtual {p0, v2, p1, v0}, Lc0/j;->B(Lu3/p;Ll3/i;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_5

    :cond_6
    instance-of v6, v2, Lc0/q;

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    instance-of v5, v2, Lc0/z;

    :goto_2
    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lc0/p$a;->c()Lc0/v;

    move-result-object v5

    if-ne v2, v5, :cond_9

    iput-object p1, v0, Lc0/j$g;->h:Ljava/lang/Object;

    iput-object p0, v0, Lc0/j$g;->i:Ljava/lang/Object;

    iput-object p2, v0, Lc0/j$g;->j:Ljava/lang/Object;

    iput v4, v0, Lc0/j$g;->m:I

    invoke-virtual {p0, v0}, Lc0/j;->w(Ll3/e;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v2, p0

    :goto_3
    invoke-virtual {p1}, Lc0/p$a;->d()Lu3/p;

    move-result-object v4

    invoke-virtual {p1}, Lc0/p$a;->b()Ll3/i;

    move-result-object p1

    iput-object p2, v0, Lc0/j$g;->h:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Lc0/j$g;->i:Ljava/lang/Object;

    iput-object v5, v0, Lc0/j$g;->j:Ljava/lang/Object;

    iput v3, v0, Lc0/j$g;->m:I

    invoke-virtual {v2, v4, p1, v0}, Lc0/j;->B(Lu3/p;Ll3/i;Ll3/e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v1, :cond_5

    return-object v1

    :goto_4
    :try_start_3
    invoke-static {p2}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :cond_9
    :try_start_4
    const-string p1, "null cannot be cast to non-null type androidx.datastore.core.ReadException<T of androidx.datastore.core.DataStoreImpl.handleUpdate$lambda$2>"

    invoke-static {v2, p1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lc0/q;

    invoke-virtual {v2}, Lc0/q;->b()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_a
    instance-of p1, v2, Lc0/l;

    if-eqz p1, :cond_b

    check-cast v2, Lc0/l;

    invoke-virtual {v2}, Lc0/l;->b()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_b
    new-instance p1, Lh3/f;

    invoke-direct {p1}, Lh3/f;-><init>()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    sget-object v0, Lh3/h;->e:Lh3/h$a;

    invoke-static {p2}, Lh3/i;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lh3/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_6
    invoke-static {p1, p2}, LD3/w;->c(LD3/u;Ljava/lang/Object;)Z

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final v(Ll3/e;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lc0/j$h;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc0/j$h;

    iget v1, v0, Lc0/j$h;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc0/j$h;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc0/j$h;

    invoke-direct {v0, p0, p1}, Lc0/j$h;-><init>(Lc0/j;Ll3/e;)V

    :goto_0
    iget-object p1, v0, Lc0/j$h;->j:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lc0/j$h;->l:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lc0/j$h;->i:Ljava/lang/Object;

    check-cast v1, LM3/a;

    iget-object v0, v0, Lc0/j$h;->h:Ljava/lang/Object;

    check-cast v0, Lc0/j;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/j;->e:LM3/a;

    iput-object p0, v0, Lc0/j$h;->h:Ljava/lang/Object;

    iput-object p1, v0, Lc0/j$h;->i:Ljava/lang/Object;

    iput v3, v0, Lc0/j$h;->l:I

    invoke-interface {p1, v4, v0}, LM3/a;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    :goto_1
    :try_start_0
    iget p1, v0, Lc0/j;->f:I

    add-int/2addr p1, v3

    iput p1, v0, Lc0/j;->f:I

    if-ne p1, v3, :cond_4

    iget-object v5, v0, Lc0/j;->c:LD3/I;

    new-instance v8, Lc0/j$i;

    invoke-direct {v8, v0, v4}, Lc0/j$i;-><init>(Lc0/j;Ll3/e;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, LD3/g;->b(LD3/I;Ll3/i;LD3/K;Lu3/p;ILjava/lang/Object;)LD3/p0;

    move-result-object p1

    iput-object p1, v0, Lc0/j;->g:LD3/p0;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    sget-object p1, Lh3/n;->a:Lh3/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, v4}, LM3/a;->a(Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :goto_3
    invoke-interface {v1, v4}, LM3/a;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method public final w(Ll3/e;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lc0/j$j;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc0/j$j;

    iget v1, v0, Lc0/j$j;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc0/j$j;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc0/j$j;

    invoke-direct {v0, p0, p1}, Lc0/j$j;-><init>(Lc0/j;Ll3/e;)V

    :goto_0
    iget-object p1, v0, Lc0/j$j;->j:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lc0/j$j;->l:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lc0/j$j;->i:I

    iget-object v0, v0, Lc0/j$j;->h:Ljava/lang/Object;

    check-cast v0, Lc0/j;

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
    iget-object v2, v0, Lc0/j$j;->h:Ljava/lang/Object;

    check-cast v2, Lc0/j;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lc0/j;->s()Lc0/n;

    move-result-object p1

    iput-object p0, v0, Lc0/j$j;->h:Ljava/lang/Object;

    iput v4, v0, Lc0/j$j;->l:I

    invoke-interface {p1, v0}, Lc0/n;->a(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    :try_start_1
    iget-object v4, v2, Lc0/j;->i:Lc0/j$b;

    iput-object v2, v0, Lc0/j$j;->h:Ljava/lang/Object;

    iput p1, v0, Lc0/j$j;->i:I

    iput v3, v0, Lc0/j$j;->l:I

    invoke-virtual {v4, v0}, Lc0/s;->c(Ll3/e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :catchall_1
    move-exception v0

    move v1, p1

    move-object p1, v0

    move-object v0, v2

    :goto_3
    iget-object v0, v0, Lc0/j;->h:Lc0/k;

    new-instance v2, Lc0/q;

    invoke-direct {v2, p1, v1}, Lc0/q;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v2}, Lc0/k;->c(Lc0/v;)Lc0/v;

    throw p1
.end method

.method public final x(ZLl3/e;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lc0/j$k;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc0/j$k;

    iget v1, v0, Lc0/j$k;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc0/j$k;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc0/j$k;

    invoke-direct {v0, p0, p2}, Lc0/j$k;-><init>(Lc0/j;Ll3/e;)V

    :goto_0
    iget-object p2, v0, Lc0/j$k;->k:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lc0/j$k;->m:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lc0/j$k;->h:Ljava/lang/Object;

    check-cast p1, Lc0/j;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lc0/j$k;->h:Ljava/lang/Object;

    check-cast p1, Lc0/j;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-boolean p1, v0, Lc0/j$k;->j:Z

    iget-object v2, v0, Lc0/j$k;->i:Ljava/lang/Object;

    check-cast v2, Lc0/v;

    iget-object v5, v0, Lc0/j$k;->h:Ljava/lang/Object;

    check-cast v5, Lc0/j;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    move-object v8, p2

    move p2, p1

    move-object p1, v5

    move-object v5, v2

    move-object v2, v8

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lc0/j;->h:Lc0/k;

    invoke-virtual {p2}, Lc0/k;->a()Lc0/v;

    move-result-object v2

    instance-of p2, v2, Lc0/z;

    if-nez p2, :cond_c

    invoke-virtual {p0}, Lc0/j;->s()Lc0/n;

    move-result-object p2

    iput-object p0, v0, Lc0/j$k;->h:Ljava/lang/Object;

    iput-object v2, v0, Lc0/j$k;->i:Ljava/lang/Object;

    iput-boolean p1, v0, Lc0/j$k;->j:Z

    iput v5, v0, Lc0/j$k;->m:I

    invoke-interface {p2, v0}, Lc0/n;->a(Ll3/e;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, v2

    move-object v2, p2

    move p2, p1

    move-object p1, p0

    :goto_1
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    instance-of v6, v5, Lc0/e;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lc0/v;->a()I

    move-result v7

    goto :goto_2

    :cond_6
    const/4 v7, -0x1

    :goto_2
    if-eqz v6, :cond_7

    if-ne v2, v7, :cond_7

    return-object v5

    :cond_7
    const/4 v2, 0x0

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lc0/j;->s()Lc0/n;

    move-result-object p2

    new-instance v3, Lc0/j$l;

    invoke-direct {v3, p1, v2}, Lc0/j$l;-><init>(Lc0/j;Ll3/e;)V

    iput-object p1, v0, Lc0/j$k;->h:Ljava/lang/Object;

    iput-object v2, v0, Lc0/j$k;->i:Ljava/lang/Object;

    iput v4, v0, Lc0/j$k;->m:I

    invoke-interface {p2, v3, v0}, Lc0/n;->d(Lu3/l;Ll3/e;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    check-cast p2, Lh3/g;

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lc0/j;->s()Lc0/n;

    move-result-object p2

    new-instance v4, Lc0/j$m;

    invoke-direct {v4, p1, v7, v2}, Lc0/j$m;-><init>(Lc0/j;ILl3/e;)V

    iput-object p1, v0, Lc0/j$k;->h:Ljava/lang/Object;

    iput-object v2, v0, Lc0/j$k;->i:Ljava/lang/Object;

    iput v3, v0, Lc0/j$k;->m:I

    invoke-interface {p2, v4, v0}, Lc0/n;->b(Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    check-cast p2, Lh3/g;

    :goto_5
    invoke-virtual {p2}, Lh3/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/v;

    invoke-virtual {p2}, Lh3/g;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p1, p1, Lc0/j;->h:Lc0/k;

    invoke-virtual {p1, v0}, Lc0/k;->c(Lc0/v;)Lc0/v;

    :cond_b
    return-object v0

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y(Ll3/e;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lc0/j;->t()Lc0/x;

    move-result-object v0

    invoke-static {v0, p1}, Lc0/y;->a(Lc0/x;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final z(ZLl3/e;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lc0/j$n;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc0/j$n;

    iget v1, v0, Lc0/j$n;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc0/j$n;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc0/j$n;

    invoke-direct {v0, p0, p2}, Lc0/j$n;-><init>(Lc0/j;Ll3/e;)V

    :goto_0
    iget-object p2, v0, Lc0/j$n;->n:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lc0/j$n;->p:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lc0/j$n;->j:Ljava/lang/Object;

    check-cast p1, Lv3/u;

    iget-object v1, v0, Lc0/j$n;->i:Ljava/lang/Object;

    check-cast v1, Lv3/w;

    iget-object v0, v0, Lc0/j$n;->h:Ljava/lang/Object;

    check-cast v0, Lc0/c;

    :try_start_0
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :pswitch_1
    iget-boolean p1, v0, Lc0/j$n;->l:Z

    iget-object v2, v0, Lc0/j$n;->k:Ljava/lang/Object;

    check-cast v2, Lv3/w;

    iget-object v3, v0, Lc0/j$n;->j:Ljava/lang/Object;

    check-cast v3, Lv3/w;

    iget-object v6, v0, Lc0/j$n;->i:Ljava/lang/Object;

    check-cast v6, Lc0/c;

    iget-object v7, v0, Lc0/j$n;->h:Ljava/lang/Object;

    check-cast v7, Lc0/j;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_9

    :pswitch_2
    iget-boolean p1, v0, Lc0/j$n;->l:Z

    iget-object v2, v0, Lc0/j$n;->h:Ljava/lang/Object;

    check-cast v2, Lc0/j;

    :try_start_1
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Lc0/c; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p2

    move-object v7, v2

    goto/16 :goto_8

    :pswitch_3
    iget-boolean p1, v0, Lc0/j$n;->l:Z

    iget-object v2, v0, Lc0/j$n;->h:Ljava/lang/Object;

    check-cast v2, Lc0/j;

    :try_start_2
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Lc0/c; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    :pswitch_4
    iget p1, v0, Lc0/j$n;->m:I

    iget-boolean v2, v0, Lc0/j$n;->l:Z

    iget-object v3, v0, Lc0/j$n;->i:Ljava/lang/Object;

    iget-object v6, v0, Lc0/j$n;->h:Ljava/lang/Object;

    check-cast v6, Lc0/j;

    :try_start_3
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Lc0/c; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    move p1, v2

    :goto_1
    move-object v7, v6

    goto/16 :goto_8

    :pswitch_5
    iget-boolean p1, v0, Lc0/j$n;->l:Z

    iget-object v2, v0, Lc0/j$n;->h:Ljava/lang/Object;

    check-cast v2, Lc0/j;

    :try_start_4
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_4
    .catch Lc0/c; {:try_start_4 .. :try_end_4} :catch_0

    move-object v6, v2

    goto :goto_2

    :pswitch_6
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    :try_start_5
    iput-object p0, v0, Lc0/j$n;->h:Ljava/lang/Object;

    iput-boolean p1, v0, Lc0/j$n;->l:Z

    iput v3, v0, Lc0/j$n;->p:I

    invoke-virtual {p0, v0}, Lc0/j;->y(Ll3/e;)Ljava/lang/Object;

    move-result-object p2
    :try_end_5
    .catch Lc0/c; {:try_start_5 .. :try_end_5} :catch_3

    if-ne p2, v1, :cond_1

    return-object v1

    :cond_1
    move-object v6, p0

    :goto_2
    if-eqz p2, :cond_2

    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_3
    invoke-virtual {v6}, Lc0/j;->s()Lc0/n;

    move-result-object v3

    iput-object v6, v0, Lc0/j$n;->h:Ljava/lang/Object;

    iput-object p2, v0, Lc0/j$n;->i:Ljava/lang/Object;

    iput-boolean p1, v0, Lc0/j$n;->l:Z

    iput v2, v0, Lc0/j$n;->m:I

    const/4 v7, 0x2

    iput v7, v0, Lc0/j$n;->p:I

    invoke-interface {v3, v0}, Lc0/n;->a(Ll3/e;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catch Lc0/c; {:try_start_6 .. :try_end_6} :catch_2

    if-ne v3, v1, :cond_3

    return-object v1

    :cond_3
    move v8, v2

    move v2, p1

    move p1, v8

    move-object v9, v3

    move-object v3, p2

    move-object p2, v9

    :goto_4
    :try_start_7
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    new-instance v7, Lc0/e;

    invoke-direct {v7, v3, p1, p2}, Lc0/e;-><init>(Ljava/lang/Object;II)V
    :try_end_7
    .catch Lc0/c; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    :catch_3
    move-exception p2

    move-object v7, p0

    goto :goto_8

    :cond_4
    :try_start_8
    invoke-virtual {p0}, Lc0/j;->s()Lc0/n;

    move-result-object p2

    iput-object p0, v0, Lc0/j$n;->h:Ljava/lang/Object;

    iput-boolean p1, v0, Lc0/j$n;->l:Z

    const/4 v2, 0x3

    iput v2, v0, Lc0/j$n;->p:I

    invoke-interface {p2, v0}, Lc0/n;->a(Ll3/e;)Ljava/lang/Object;

    move-result-object p2
    :try_end_8
    .catch Lc0/c; {:try_start_8 .. :try_end_8} :catch_3

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_5
    :try_start_9
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v2}, Lc0/j;->s()Lc0/n;

    move-result-object v3

    new-instance v6, Lc0/j$o;

    invoke-direct {v6, v2, p2, v4}, Lc0/j$o;-><init>(Lc0/j;ILl3/e;)V

    iput-object v2, v0, Lc0/j$n;->h:Ljava/lang/Object;

    iput-boolean p1, v0, Lc0/j$n;->l:Z

    const/4 p2, 0x4

    iput p2, v0, Lc0/j$n;->p:I

    invoke-interface {v3, v6, v0}, Lc0/n;->b(Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_6
    move-object v7, p2

    check-cast v7, Lc0/e;
    :try_end_9
    .catch Lc0/c; {:try_start_9 .. :try_end_9} :catch_0

    :goto_7
    return-object v7

    :goto_8
    new-instance v2, Lv3/w;

    invoke-direct {v2}, Lv3/w;-><init>()V

    iget-object v3, v7, Lc0/j;->b:Lc0/d;

    iput-object v7, v0, Lc0/j$n;->h:Ljava/lang/Object;

    iput-object p2, v0, Lc0/j$n;->i:Ljava/lang/Object;

    iput-object v2, v0, Lc0/j$n;->j:Ljava/lang/Object;

    iput-object v2, v0, Lc0/j$n;->k:Ljava/lang/Object;

    iput-boolean p1, v0, Lc0/j$n;->l:Z

    const/4 v6, 0x5

    iput v6, v0, Lc0/j$n;->p:I

    invoke-interface {v3, p2, v0}, Lc0/d;->a(Lc0/c;Ll3/e;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_7

    return-object v1

    :cond_7
    move-object v6, p2

    move-object p2, v3

    move-object v3, v2

    :goto_9
    iput-object p2, v3, Lv3/w;->e:Ljava/lang/Object;

    new-instance p2, Lv3/u;

    invoke-direct {p2}, Lv3/u;-><init>()V

    :try_start_a
    new-instance v3, Lc0/j$p;

    invoke-direct {v3, v2, v7, p2, v4}, Lc0/j$p;-><init>(Lv3/w;Lc0/j;Lv3/u;Ll3/e;)V

    iput-object v6, v0, Lc0/j$n;->h:Ljava/lang/Object;

    iput-object v2, v0, Lc0/j$n;->i:Ljava/lang/Object;

    iput-object p2, v0, Lc0/j$n;->j:Ljava/lang/Object;

    iput-object v4, v0, Lc0/j$n;->k:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v0, Lc0/j$n;->p:I

    invoke-virtual {v7, p1, v3, v0}, Lc0/j;->r(ZLu3/l;Ll3/e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object p1, p2

    move-object v1, v2

    :goto_a
    new-instance p2, Lc0/e;

    iget-object v0, v1, Lv3/w;->e:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :cond_9
    iget p1, p1, Lv3/u;->e:I

    invoke-direct {p2, v0, v5, p1}, Lc0/e;-><init>(Ljava/lang/Object;II)V

    return-object p2

    :catchall_1
    move-exception p1

    move-object v0, v6

    :goto_b
    invoke-static {v0, p1}, Lh3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
