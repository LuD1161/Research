.class public final LG3/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG3/l;->a(LG3/d;Lu3/p;)LG3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lv3/t;

.field public final synthetic f:LG3/e;

.field public final synthetic g:Lu3/p;


# direct methods
.method public constructor <init>(Lv3/t;LG3/e;Lu3/p;)V
    .locals 0

    iput-object p1, p0, LG3/l$b;->e:Lv3/t;

    iput-object p2, p0, LG3/l$b;->f:LG3/e;

    iput-object p3, p0, LG3/l$b;->g:Lu3/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, LG3/l$b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LG3/l$b$a;

    iget v1, v0, LG3/l$b$a;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LG3/l$b$a;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, LG3/l$b$a;

    invoke-direct {v0, p0, p2}, LG3/l$b$a;-><init>(LG3/l$b;Ll3/e;)V

    :goto_0
    iget-object p2, v0, LG3/l$b$a;->j:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LG3/l$b$a;->l:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, LG3/l$b$a;->i:Ljava/lang/Object;

    iget-object v2, v0, LG3/l$b$a;->h:Ljava/lang/Object;

    check-cast v2, LG3/l$b;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p2, p0, LG3/l$b;->e:Lv3/t;

    iget-boolean p2, p2, Lv3/t;->e:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, LG3/l$b;->f:LG3/e;

    iput v5, v0, LG3/l$b$a;->l:I

    invoke-interface {p2, p1, v0}, LG3/e;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_6
    iget-object p2, p0, LG3/l$b;->g:Lu3/p;

    iput-object p0, v0, LG3/l$b$a;->h:Ljava/lang/Object;

    iput-object p1, v0, LG3/l$b$a;->i:Ljava/lang/Object;

    iput v4, v0, LG3/l$b$a;->l:I

    invoke-interface {p2, p1, v0}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p0

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, v2, LG3/l$b;->e:Lv3/t;

    iput-boolean v5, p2, Lv3/t;->e:Z

    iget-object p2, v2, LG3/l$b;->f:LG3/e;

    const/4 v2, 0x0

    iput-object v2, v0, LG3/l$b$a;->h:Ljava/lang/Object;

    iput-object v2, v0, LG3/l$b$a;->i:Ljava/lang/Object;

    iput v3, v0, LG3/l$b$a;->l:I

    invoke-interface {p2, p1, v0}, LG3/e;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_9
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
