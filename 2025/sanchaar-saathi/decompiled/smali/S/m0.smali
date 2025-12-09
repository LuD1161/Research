.class public final LS/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LS/m0$d;,
        LS/m0$e;,
        LS/m0$c;,
        LS/m0$b;,
        LS/m0$a;
    }
.end annotation


# instance fields
.field public final a:LS/m0$e;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LS/y;

    invoke-direct {v0, p2}, LS/y;-><init>(Landroid/view/View;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p2, v1, :cond_0

    new-instance p2, LS/m0$d;

    invoke-direct {p2, p1, p0, v0}, LS/m0$d;-><init>(Landroid/view/Window;LS/m0;LS/y;)V

    iput-object p2, p0, LS/m0;->a:LS/m0$e;

    goto :goto_0

    :cond_0
    new-instance p2, LS/m0$c;

    invoke-direct {p2, p1, v0}, LS/m0$c;-><init>(Landroid/view/Window;LS/y;)V

    iput-object p2, p0, LS/m0;->a:LS/m0$e;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, LS/m0;->a:LS/m0$e;

    invoke-virtual {v0, p1}, LS/m0$e;->a(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, LS/m0;->a:LS/m0$e;

    invoke-virtual {v0, p1}, LS/m0$e;->b(Z)V

    return-void
.end method
