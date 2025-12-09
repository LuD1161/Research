.class public LS/C$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LS/C$h;->u(Landroid/view/View;LS/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:LS/O;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LS/v;


# direct methods
.method public constructor <init>(Landroid/view/View;LS/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LS/C$h$a;->b:Landroid/view/View;

    iput-object p2, p0, LS/C$h$a;->c:LS/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, LS/C$h$a;->a:LS/O;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    invoke-static {p2, p1}, LS/O;->w(Landroid/view/WindowInsets;Landroid/view/View;)LS/O;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    iget-object v3, p0, LS/C$h$a;->b:Landroid/view/View;

    invoke-static {p2, v3}, LS/C$h;->a(Landroid/view/WindowInsets;Landroid/view/View;)V

    iget-object p2, p0, LS/C$h$a;->a:LS/O;

    invoke-virtual {v0, p2}, LS/O;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, LS/C$h$a;->c:LS/v;

    invoke-interface {p2, p1, v0}, LS/v;->a(Landroid/view/View;LS/O;)LS/O;

    move-result-object p1

    invoke-virtual {p1}, LS/O;->u()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object v0, p0, LS/C$h$a;->a:LS/O;

    iget-object p2, p0, LS/C$h$a;->c:LS/v;

    invoke-interface {p2, p1, v0}, LS/v;->a(Landroid/view/View;LS/O;)LS/O;

    move-result-object p2

    if-lt v1, v2, :cond_1

    invoke-virtual {p2}, LS/O;->u()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, LS/C;->d0(Landroid/view/View;)V

    invoke-virtual {p2}, LS/O;->u()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
