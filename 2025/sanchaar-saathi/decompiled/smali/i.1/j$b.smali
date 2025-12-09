.class public Li/j$b;
.super LS/M;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/j;


# direct methods
.method public constructor <init>(Li/j;)V
    .locals 0

    iput-object p1, p0, Li/j$b;->a:Li/j;

    invoke-direct {p0}, LS/M;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Li/j$b;->a:Li/j;

    const/4 v0, 0x0

    iput-object v0, p1, Li/j;->x:Ln/h;

    iget-object p1, p1, Li/j;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
