.class public Li0/I$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li0/I;


# direct methods
.method public constructor <init>(Li0/I;)V
    .locals 0

    iput-object p1, p0, Li0/I$c;->a:Li0/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Li0/I$c;->a:Li0/I;

    invoke-virtual {v0, p1}, Li0/I;->J(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Li0/I$c;->a:Li0/I;

    invoke-virtual {v0, p1}, Li0/I;->K(Landroid/view/Menu;)V

    return-void
.end method

.method public c(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    iget-object v0, p0, Li0/I$c;->a:Li0/I;

    invoke-virtual {v0, p1, p2}, Li0/I;->C(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    return-void
.end method

.method public d(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Li0/I$c;->a:Li0/I;

    invoke-virtual {v0, p1}, Li0/I;->O(Landroid/view/Menu;)Z

    return-void
.end method
