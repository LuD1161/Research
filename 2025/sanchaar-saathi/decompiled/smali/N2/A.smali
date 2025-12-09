.class public final synthetic LN2/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/b$b;


# instance fields
.field public final synthetic a:LN2/E$d$a;


# direct methods
.method public synthetic constructor <init>(LN2/E$d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN2/A;->a:LN2/E$d$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, LN2/A;->a:LN2/E$d$a;

    invoke-static {v0, p1}, LN2/D;->d(LN2/E$d$a;Ljava/nio/ByteBuffer;)V

    return-void
.end method
