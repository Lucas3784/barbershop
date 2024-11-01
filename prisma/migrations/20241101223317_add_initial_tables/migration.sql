-- CreateTable
CREATE TABLE "user" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "barbershop" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "andress" TEXT NOT NULL,
    "imageURL" TEXT NOT NULL,

    CONSTRAINT "barbershop_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Service" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "price" DECIMAL(10,2) NOT NULL,
    "barbershopID" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "Service_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "booking" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "ServiceID" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "barbershopID" TEXT NOT NULL,

    CONSTRAINT "booking_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Service" ADD CONSTRAINT "Service_barbershopID_fkey" FOREIGN KEY ("barbershopID") REFERENCES "barbershop"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "booking" ADD CONSTRAINT "booking_userId_fkey" FOREIGN KEY ("userId") REFERENCES "user"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "booking" ADD CONSTRAINT "booking_ServiceID_fkey" FOREIGN KEY ("ServiceID") REFERENCES "Service"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "booking" ADD CONSTRAINT "booking_barbershopID_fkey" FOREIGN KEY ("barbershopID") REFERENCES "barbershop"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
