.class public final LG3/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG3/k;->e(LG3/d;Lu3/p;)LG3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lu3/p;

.field public final synthetic f:LG3/d;


# direct methods
.method public constructor <init>(Lu3/p;LG3/d;)V
    .locals 0

    iput-object p1, p0, LG3/k$c;->e:Lu3/p;

    iput-object p2, p0, LG3/k$c;->f:LG3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, LG3/k$c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LG3/k$c$a;

    iget v1, v0, LG3/k$c$a;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LG3/k$c$a;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, LG3/k$c$a;

    invoke-direct {v0, p0, p2}, LG3/k$c$a;-><init>(LG3/k$c;Ll3/e;)V

    :goto_0
    iget-object p2, v0, LG3/k$c$a;->h:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LG3/k$c$a;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, LG3/k$c$a;->m:Ljava/lang/Object;

    check-cast p1, LH3/n;

    iget-object v2, v0, LG3/k$c$a;->l:Ljava/lang/Object;

    check-cast v2, LG3/e;

    iget-object v4, v0, LG3/k$c$a;->k:Ljava/lang/Object;

    check-cast v4, LG3/k$c;

    :try_start_0
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    new-instance p2, LH3/n;

    invoke-interface {v0}, Ll3/e;->a()Ll3/i;

    move-result-object v2

    invoke-direct {p2, p1, v2}, LH3/n;-><init>(LG3/e;Ll3/i;)V

    :try_start_1
    iget-object v2, p0, LG3/k$c;->e:Lu3/p;

    iput-object p0, v0, LG3/k$c$a;->k:Ljava/lang/Object;

    iput-object p1, v0, LG3/k$c$a;->l:Ljava/lang/Object;

    iput-object p2, v0, LG3/k$c$a;->m:Ljava/lang/Object;

    iput v4, v0, LG3/k$c$a;->i:I

    const/4 v4, 0x6

    invoke-static {v4}, Lv3/k;->a(I)V

    invoke-interface {v2, p2, v0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x7

    invoke-static {v4}, Lv3/k;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, LH3/n;->p()V

    iget-object p1, v4, LG3/k$c;->f:LG3/d;

    const/4 p2, 0x0

    iput-object p2, v0, LG3/k$c$a;->k:Ljava/lang/Object;

    iput-object p2, v0, LG3/k$c$a;->l:Ljava/lang/Object;

    iput-object p2, v0, LG3/k$c$a;->m:Ljava/lang/Object;

    iput v3, v0, LG3/k$c$a;->i:I

    invoke-interface {p1, v2, v0}, LG3/d;->c(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_3
    invoke-virtual {p1}, LH3/n;->p()V

    throw p2
.end method
