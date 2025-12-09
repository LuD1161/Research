.class public abstract LD3/f0;
.super LD3/F;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD3/f0$a;
    }
.end annotation


# static fields
.field public static final g:LD3/f0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LD3/f0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LD3/f0$a;-><init>(Lv3/g;)V

    sput-object v0, LD3/f0;->g:LD3/f0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LD3/F;-><init>()V

    return-void
.end method
