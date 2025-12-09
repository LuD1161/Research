.class public final LD3/f;
.super LD3/a0;
.source "SourceFile"


# instance fields
.field public final m:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, LD3/a0;-><init>()V

    iput-object p1, p0, LD3/f;->m:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public a0()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, LD3/f;->m:Ljava/lang/Thread;

    return-object v0
.end method
