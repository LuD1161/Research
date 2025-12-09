.class public final Lc0/j$u;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;-><init>(Lc0/w;Ljava/util/List;Lc0/d;LD3/I;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lc0/j;


# direct methods
.method public constructor <init>(Lc0/j;)V
    .locals 0

    iput-object p1, p0, Lc0/j$u;->f:Lc0/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc0/j$u;->f:Lc0/j;

    invoke-static {v0}, Lc0/j;->e(Lc0/j;)Lc0/k;

    move-result-object v0

    new-instance v1, Lc0/l;

    invoke-direct {v1, p1}, Lc0/l;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lc0/k;->c(Lc0/v;)Lc0/v;

    :cond_0
    iget-object p1, p0, Lc0/j$u;->f:Lc0/j;

    invoke-static {p1}, Lc0/j;->h(Lc0/j;)Lh3/d;

    move-result-object p1

    invoke-interface {p1}, Lh3/d;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc0/j$u;->f:Lc0/j;

    invoke-virtual {p1}, Lc0/j;->t()Lc0/x;

    move-result-object p1

    invoke-interface {p1}, Lc0/b;->close()V

    :cond_1
    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lc0/j$u;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
