.class public LS/m0$d;
.super LS/m0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:LS/m0;

.field public final b:Landroid/view/WindowInsetsController;

.field public final c:LS/y;

.field public final d:Lv/g;

.field public e:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;LS/m0;LS/y;)V
    .locals 1

    .line 1
    invoke-static {p1}, LS/n0;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, LS/m0$d;-><init>(Landroid/view/WindowInsetsController;LS/m0;LS/y;)V

    .line 2
    iput-object p1, p0, LS/m0$d;->e:Landroid/view/Window;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsController;LS/m0;LS/y;)V
    .locals 1

    .line 3
    invoke-direct {p0}, LS/m0$e;-><init>()V

    .line 4
    new-instance v0, Lv/g;

    invoke-direct {v0}, Lv/g;-><init>()V

    iput-object v0, p0, LS/m0$d;->d:Lv/g;

    .line 5
    iput-object p1, p0, LS/m0$d;->b:Landroid/view/WindowInsetsController;

    .line 6
    iput-object p2, p0, LS/m0$d;->a:LS/m0;

    .line 7
    iput-object p3, p0, LS/m0$d;->c:LS/y;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const/16 v0, 0x10

    if-eqz p1, :cond_1

    iget-object p1, p0, LS/m0$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, LS/m0$d;->c(I)V

    :cond_0
    iget-object p1, p0, LS/m0$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1, v0, v0}, LS/o0;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LS/m0$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, LS/m0$d;->d(I)V

    :cond_2
    iget-object p1, p0, LS/m0$d;->b:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, LS/o0;->a(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    const/16 v0, 0x2000

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, LS/m0$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, LS/m0$d;->c(I)V

    :cond_0
    iget-object p1, p0, LS/m0$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1, v1, v1}, LS/o0;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LS/m0$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, LS/m0$d;->d(I)V

    :cond_2
    iget-object p1, p0, LS/m0$d;->b:Landroid/view/WindowInsetsController;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, LS/o0;->a(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, LS/m0$d;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, LS/m0$d;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
