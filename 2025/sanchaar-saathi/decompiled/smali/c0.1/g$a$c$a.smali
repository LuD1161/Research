.class public final Lc0/g$a$c$a;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/g$a$c;->o(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I


# direct methods
.method public constructor <init>(Lc0/f;Ll3/e;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ll3/e;

    invoke-virtual {p0, p1}, Lc0/g$a$c$a;->t(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    iget v0, p0, Lc0/g$a$c$a;->i:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iput v1, p0, Lc0/g$a$c$a;->i:I

    const/4 p1, 0x0

    throw p1
.end method

.method public final s(Ll3/e;)Ll3/e;
    .locals 2

    new-instance v0, Lc0/g$a$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lc0/g$a$c$a;-><init>(Lc0/f;Ll3/e;)V

    return-object v0
.end method

.method public final t(Ll3/e;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lc0/g$a$c$a;->s(Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/g$a$c$a;

    sget-object v0, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, v0}, Lc0/g$a$c$a;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
