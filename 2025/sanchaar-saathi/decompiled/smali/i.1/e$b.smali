.class public Li/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/e;->Q()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/e;


# direct methods
.method public constructor <init>(Li/e;)V
    .locals 0

    iput-object p1, p0, Li/e$b;->a:Li/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LS/O;)LS/O;
    .locals 4

    invoke-virtual {p2}, LS/O;->l()I

    move-result v0

    iget-object v1, p0, Li/e$b;->a:Li/e;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Li/e;->L0(LS/O;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, LS/O;->j()I

    move-result v0

    invoke-virtual {p2}, LS/O;->k()I

    move-result v2

    invoke-virtual {p2}, LS/O;->i()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, LS/O;->p(IIII)LS/O;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, LS/C;->T(Landroid/view/View;LS/O;)LS/O;

    move-result-object p1

    return-object p1
.end method
