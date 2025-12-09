.class public final LG3/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG3/l;->b(LG3/d;Lu3/p;)LG3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lu3/p;

.field public final synthetic f:LG3/e;


# direct methods
.method public constructor <init>(Lu3/p;LG3/e;)V
    .locals 0

    iput-object p1, p0, LG3/l$d;->e:Lu3/p;

    iput-object p2, p0, LG3/l$d;->f:LG3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, LG3/l$d$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LG3/l$d$a;

    iget v1, v0, LG3/l$d$a;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LG3/l$d$a;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, LG3/l$d$a;

    invoke-direct {v0, p0, p2}, LG3/l$d$a;-><init>(LG3/l$d;Ll3/e;)V

    :goto_0
    iget-object p2, v0, LG3/l$d$a;->i:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LG3/l$d$a;->j:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LG3/l$d$a;->h:Ljava/lang/Object;

    check-cast p1, LG3/l$d;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, LG3/l$d$a;->l:Ljava/lang/Object;

    iget-object v2, v0, LG3/l$d$a;->h:Ljava/lang/Object;

    check-cast v2, LG3/l$d;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    move-object v6, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v6

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p2, p0, LG3/l$d;->e:Lu3/p;

    iput-object p0, v0, LG3/l$d$a;->h:Ljava/lang/Object;

    iput-object p1, v0, LG3/l$d$a;->l:Ljava/lang/Object;

    iput v4, v0, LG3/l$d$a;->j:I

    const/4 v2, 0x6

    invoke-static {v2}, Lv3/k;->a(I)V

    invoke-interface {p2, p1, v0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x7

    invoke-static {v2}, Lv3/k;->a(I)V

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p2

    move-object p2, p1

    move-object p1, p0

    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, LG3/l$d;->f:LG3/e;

    iput-object p1, v0, LG3/l$d$a;->h:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, LG3/l$d$a;->l:Ljava/lang/Object;

    iput v3, v0, LG3/l$d$a;->j:I

    invoke-interface {v2, p2, v0}, LG3/e;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_7
    new-instance p2, LH3/a;

    invoke-direct {p2, p1}, LH3/a;-><init>(LG3/e;)V

    throw p2
.end method
