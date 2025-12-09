.class public final Lz0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lz0/c;


# direct methods
.method public constructor <init>(Lz0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/d$b;->a:Lz0/c;

    return-void
.end method


# virtual methods
.method public final a()Lz0/c;
    .locals 1

    iget-object v0, p0, Lz0/d$b;->a:Lz0/c;

    return-object v0
.end method

.method public final b(Lz0/c;)V
    .locals 0

    iput-object p1, p0, Lz0/d$b;->a:Lz0/c;

    return-void
.end method
