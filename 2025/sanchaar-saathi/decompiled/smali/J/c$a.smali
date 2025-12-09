.class public LJ/c$a;
.super LP/g$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LI/b$b;


# direct methods
.method public constructor <init>(LI/b$b;)V
    .locals 0

    invoke-direct {p0}, LP/g$c;-><init>()V

    iput-object p1, p0, LJ/c$a;->a:LI/b$b;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, LJ/c$a;->a:LI/b$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LI/b$b;->h(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, LJ/c$a;->a:LI/b$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LI/b$b;->i(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
