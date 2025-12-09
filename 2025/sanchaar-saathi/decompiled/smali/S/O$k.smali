.class public LS/O$k;
.super LS/O$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# static fields
.field public static final q:LS/O;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LS/d0;->a()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, LS/O;->v(Landroid/view/WindowInsets;)LS/O;

    move-result-object v0

    sput-object v0, LS/O$k;->q:LS/O;

    return-void
.end method

.method public constructor <init>(LS/O;LS/O$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LS/O$j;-><init>(LS/O;LS/O$j;)V

    return-void
.end method

.method public constructor <init>(LS/O;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LS/O$j;-><init>(LS/O;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public g(I)LJ/b;
    .locals 1

    iget-object v0, p0, LS/O$g;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, LS/O$n;->a(I)I

    move-result p1

    invoke-static {v0, p1}, LS/c0;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, LJ/b;->d(Landroid/graphics/Insets;)LJ/b;

    move-result-object p1

    return-object p1
.end method
