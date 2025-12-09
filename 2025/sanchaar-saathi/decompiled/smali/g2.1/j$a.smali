.class public final Lg2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg2/j;->a(Landroid/view/View;Lg2/j$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg2/j$c;

.field public final synthetic b:Lg2/j$d;


# direct methods
.method public constructor <init>(Lg2/j$c;Lg2/j$d;)V
    .locals 0

    iput-object p1, p0, Lg2/j$a;->a:Lg2/j$c;

    iput-object p2, p0, Lg2/j$a;->b:Lg2/j$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;LS/O;)LS/O;
    .locals 3

    iget-object v0, p0, Lg2/j$a;->a:Lg2/j$c;

    new-instance v1, Lg2/j$d;

    iget-object v2, p0, Lg2/j$a;->b:Lg2/j$d;

    invoke-direct {v1, v2}, Lg2/j$d;-><init>(Lg2/j$d;)V

    invoke-interface {v0, p1, p2, v1}, Lg2/j$c;->a(Landroid/view/View;LS/O;Lg2/j$d;)LS/O;

    move-result-object p1

    return-object p1
.end method
