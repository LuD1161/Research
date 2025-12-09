.class public final synthetic LI/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LI/b$b;

.field public final synthetic f:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor <init>(LI/b$b;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/c;->e:LI/b$b;

    iput-object p2, p0, LI/c;->f:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LI/c;->e:LI/b$b;

    iget-object v1, p0, LI/c;->f:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, LI/b$b;->a(LI/b$b;Landroid/graphics/Typeface;)V

    return-void
.end method
