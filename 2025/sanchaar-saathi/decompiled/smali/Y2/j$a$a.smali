.class public LY2/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY2/j$a;->a(Ljava/nio/ByteBuffer;LY2/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LY2/b$b;

.field public final synthetic b:LY2/j$a;


# direct methods
.method public constructor <init>(LY2/j$a;LY2/b$b;)V
    .locals 0

    iput-object p1, p0, LY2/j$a$a;->b:LY2/j$a;

    iput-object p2, p0, LY2/j$a$a;->a:LY2/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LY2/j$a$a;->a:LY2/b$b;

    iget-object v1, p0, LY2/j$a$a;->b:LY2/j$a;

    iget-object v1, v1, LY2/j$a;->b:LY2/j;

    invoke-static {v1}, LY2/j;->a(LY2/j;)LY2/k;

    move-result-object v1

    invoke-interface {v1, p1}, LY2/k;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, LY2/b$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LY2/j$a$a;->a:LY2/b$b;

    iget-object v1, p0, LY2/j$a$a;->b:LY2/j$a;

    iget-object v1, v1, LY2/j$a;->b:LY2/j;

    invoke-static {v1}, LY2/j;->a(LY2/j;)LY2/k;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, LY2/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, LY2/b$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, LY2/j$a$a;->a:LY2/b$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LY2/b$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method
