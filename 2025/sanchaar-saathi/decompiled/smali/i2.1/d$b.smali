.class public Li2/d$b;
.super Li2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Li2/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Li2/f;

.field public final synthetic c:Li2/d;


# direct methods
.method public constructor <init>(Li2/d;Landroid/text/TextPaint;Li2/f;)V
    .locals 0

    iput-object p1, p0, Li2/d$b;->c:Li2/d;

    iput-object p2, p0, Li2/d$b;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Li2/d$b;->b:Li2/f;

    invoke-direct {p0}, Li2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Li2/d$b;->b:Li2/f;

    invoke-virtual {v0, p1}, Li2/f;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-object v0, p0, Li2/d$b;->c:Li2/d;

    iget-object v1, p0, Li2/d$b;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Li2/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Li2/d$b;->b:Li2/f;

    invoke-virtual {v0, p1, p2}, Li2/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
