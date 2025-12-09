.class public final Le3/I$b;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/I;->t(Ljava/lang/String;Ljava/lang/String;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lg0/f$a;

.field public final synthetic l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg0/f$a;Ljava/lang/String;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Le3/I$b;->k:Lg0/f$a;

    iput-object p2, p0, Le3/I$b;->l:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg0/c;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Le3/I$b;->s(Lg0/c;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 3

    new-instance v0, Le3/I$b;

    iget-object v1, p0, Le3/I$b;->k:Lg0/f$a;

    iget-object v2, p0, Le3/I$b;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Le3/I$b;-><init>(Lg0/f$a;Ljava/lang/String;Ll3/e;)V

    iput-object p1, v0, Le3/I$b;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    iget v0, p0, Le3/I$b;->i:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Le3/I$b;->j:Ljava/lang/Object;

    check-cast p1, Lg0/c;

    iget-object v0, p0, Le3/I$b;->k:Lg0/f$a;

    iget-object v1, p0, Le3/I$b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lg0/c;->j(Lg0/f$a;Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Lg0/c;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le3/I$b;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Le3/I$b;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Le3/I$b;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
