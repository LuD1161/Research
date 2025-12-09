.class public Li2/d$a;
.super LI/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/d;->h(Landroid/content/Context;Li2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li2/f;

.field public final synthetic b:Li2/d;


# direct methods
.method public constructor <init>(Li2/d;Li2/f;)V
    .locals 0

    iput-object p1, p0, Li2/d$a;->b:Li2/d;

    iput-object p2, p0, Li2/d$a;->a:Li2/f;

    invoke-direct {p0}, LI/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public h(I)V
    .locals 2

    iget-object v0, p0, Li2/d$a;->b:Li2/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Li2/d;->c(Li2/d;Z)Z

    iget-object v0, p0, Li2/d$a;->a:Li2/f;

    invoke-virtual {v0, p1}, Li2/f;->a(I)V

    return-void
.end method

.method public i(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Li2/d$a;->b:Li2/d;

    iget v1, v0, Li2/d;->f:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Li2/d;->b(Li2/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Li2/d$a;->b:Li2/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Li2/d;->c(Li2/d;Z)Z

    iget-object p1, p0, Li2/d$a;->a:Li2/f;

    iget-object v0, p0, Li2/d$a;->b:Li2/d;

    invoke-static {v0}, Li2/d;->a(Li2/d;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Li2/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
