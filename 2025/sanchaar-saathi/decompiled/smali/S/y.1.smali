.class public final LS/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LS/y$b;,
        LS/y$c;,
        LS/y$a;
    }
.end annotation


# instance fields
.field public final a:LS/y$c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, LS/y$b;

    invoke-direct {v0, p1}, LS/y$b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, LS/y;->a:LS/y$c;

    goto :goto_0

    :cond_0
    new-instance v0, LS/y$a;

    invoke-direct {v0, p1}, LS/y$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, LS/y;->a:LS/y$c;

    :goto_0
    return-void
.end method
