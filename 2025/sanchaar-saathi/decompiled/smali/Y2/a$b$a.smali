.class public LY2/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY2/a$b;->a(Ljava/nio/ByteBuffer;LY2/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LY2/b$b;

.field public final synthetic b:LY2/a$b;


# direct methods
.method public constructor <init>(LY2/a$b;LY2/b$b;)V
    .locals 0

    iput-object p1, p0, LY2/a$b$a;->b:LY2/a$b;

    iput-object p2, p0, LY2/a$b$a;->a:LY2/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LY2/a$b$a;->a:LY2/b$b;

    iget-object v1, p0, LY2/a$b$a;->b:LY2/a$b;

    iget-object v1, v1, LY2/a$b;->b:LY2/a;

    invoke-static {v1}, LY2/a;->a(LY2/a;)LY2/h;

    move-result-object v1

    invoke-interface {v1, p1}, LY2/h;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, LY2/b$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method
